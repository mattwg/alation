## Alation Package for R

This R package enables R users to access query and result objects created in Alation.

Alation is an intelligent query compose tool - for more information check out the [Alation website](http://alation.com)

## Installation

```{r}
library(devtools)
devtools::install_github(repo = "mattwg/alation")
```

## Usage

After install you need to get a token from the Alation API:

```{r}
getToken(user="magardner",password="secret", url="https://alation.corp.ebay.com")
```

This stores the Alation token and url in a file in the package install directory.

If you update your password or need to change the URL you can change the token:

```{r}
changeToken(user="magardner",password="newsecret", url="https://alation.corp.ebay.com")
```

Once you have got your token you can now grab queries from Alation - to do this you need to know the Alation query ID:

```{r}
sql <- getQuery(123456)
```

If results of query runs are stored in Alation you can get the data in an R dataframe like this:
```{r}
df <- getResult(12345)
```

Enjoy!

## To come

As Alation improve their API I will mirror development in this package - things we have discussed:

* Ability to run queries via the API 
* Get the latest result for a specific query
* Improved metadata for query 

