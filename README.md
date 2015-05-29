## Alation Package for R

This R package enables R users to access query and result objects created in Alation.

Alation is an intelligent query compose tool - for more information check out the [Alation website](http://alation.com)

Reusing queries and results created in Alation in other applications is made possible through the Alation Compose API.  A [Python module](https://alation.uservoice.com/knowledgebase/articles/396525-use-compose-api) exists for Python users - here I present an R package for R users.

The R package is simply called alation - this package makes it easy to use the Alation Compose API.  With the alation package you can:

* Recover any Alation query as a SQL string that can then be submitted against databases using RJDBC or RODBC
* Recover any Alation results object to save having to rerun queries multiple times

In time the Alation API will also support:

* Execution of queries on Alation without the need to connect independently to data sources
* Substitute parameters into queries without using gsub in R
* Automatically recover the latest run of a SQL query rather than having to find the query_id
    
As the Alation API evolves I will try and keep this package up to date.

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

