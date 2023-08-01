#!/bin/bash

OMDB_API_KEY=8cc29ded

if [ -z $OMDB_API_KEY ]; then
	echo "Add your API KEY"
	exit 1
fi

if [ -z "$1" ]; then  
	echo "Usage: $0 <movie-name>"
	exit 1
fi

movie_title=$(echo "$1" | tr " " "+")
api_endpoint="http://www.omdbapi.com/?t=${movie_title}&apikey=${OMDB_API_KEY}"
data=$(curl -s "$api_endpoint")

if [ "$data" = '{"Response":"False","Error":"Movie not found!"}' ]; then
	echo "Movie not found in database"
	exit 1
fi

title=$(echo "$data" | jq -r ".Title")
year=$(echo "$data" | jq -r ".Year")
genre=$(echo "$data" | jq -r ".Genre")
rating=$(echo "$data" | jq -r ".imdbRating")
summary=$(echo "$data" | jq -r ".Plot")

echo "Title: $title"
echo "Year: $year"
echo "Genre: $genre"
echo "Rating: $rating"
echo "Summary: $summary"

