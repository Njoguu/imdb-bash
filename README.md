# imdb-bash
## Introduction
This is a powerful command-line tool that allows you to fetch detailed information about movies from [IMDb](https://www.imdb.com/) (Internet Movie Database). With this script, you can quickly access movie details such as title, release year, plot summary, cast, ratings, and more, directly from the IMDb database.

## Prerequisites
Before using the script, ensure that the following dependencies are installed on your system:

- Bash (Bourne Again SHell)
- cURL (Client for URLs)
- jq (Command-line JSON processor)

## Getting Started
Clone this repository to your local machine:

```bash
git clone https://github.com/Njoguu/imdb-bash.git
```
Change into the project directory:

```bash
cd imdb-movie-information-fetcher
```
Make the `imdb-ghw.sh` script executable:

```bash
chmod +x imdb-ghw.sh
```

### Usage: 
Run the script by providing the movie title as an argument:

```bash
./imdb-ghw.sh "Movie Title"
```
Replace "Movie Title" with the title of the movie you want to fetch information about. If the title contains spaces, make sure to enclose it in double quotes.

### Example
```bash
./imdb-ghw.sh "Teen Wolf"
```

### Output
The script will display detailed information about the movie, including:

- Title
- Year of release
- Runtime
- Genre
- Plot summary

## API Key
To use the script correctly you need an API KEY from [Open Movie Database](https://www.omdbapi.com/).
Include it in the `imdb-ghw.sh` script:

```bash
IMDB_API_KEY="your_api_key_here"
```
Replace "your_api_key_here" with your actual OMDb API API key. Please follow the terms of use while using the script.
