% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_complaints.R
\name{query_complaints}
\alias{query_complaints}
\title{Query For Complaints}
\usage{
query_complaints(
  search_term = NULL,
  field = NULL,
  frm = NULL,
  size = NULL,
  sort = NULL,
  format = NULL,
  no_aggs = NULL,
  no_highlight = NULL,
  company = NULL,
  company_public_response = NULL,
  company_received_max = NULL,
  company_received_min = NULL,
  company_response = NULL,
  consumer_consent_provided = NULL,
  consumer_disputed = NULL,
  date_received_max = NULL,
  date_received_min = NULL,
  has_narrative = NULL,
  issue = NULL,
  product = NULL,
  state = NULL,
  submitted_via = NULL,
  tags = NULL,
  timely = NULL,
  zip_code = NULL
)
}
\arguments{
\item{search_term}{(string) Return results containing specific term}

\item{field}{(string) If the parameter "search_term" has a value, use "field" to specify which field is searched. If not specified, "complaint_what_happened" will be searched.}

\item{frm}{(integer) Return results starting from a specific index, only if format parameter is not specified, ignore otherwise}

\item{size}{(integer) Limit the size of the results.  Max limit is 1000}

\item{sort}{(string) Return results sort in a particular order}

\item{format}{(string) Format to be returned, if this parameter is not specified, frm/size parameters can be used properly, but if a format is specified for exporting, frm/size will be ignored}

\item{no_aggs}{(boolean) Include aggregations in result or not, True means no aggregations will be included, False means aggregations will be included.}

\item{no_highlight}{(boolean) Include highlight of search term in result or not, True means no highlighting will be included, False means highlighting will be included.}

\item{company}{(string array) Filter the results to only return these companies}

\item{company_public_response}{(string array) Filter the results to only return these types of public response by the company}

\item{company_received_max}{(string) Return results with date < company_received_max (i.e. 2017-03-04)}

\item{company_received_min}{(string) Return results with date >= company_received_min (i.e. 2017-03-04)}

\item{company_response}{(string array) Filter the results to only return these types of response by the company}

\item{consumer_consent_provided}{(string array) Filter the results to only return these types of consent consumer provided}

\item{consumer_disputed}{(string array) Filter the results to only return the specified state of consumer disputed, i.e. yes, no}

\item{date_received_max}{(string) Return results with date < date_received_max (i.e. 2017-03-04)}

\item{date_received_min}{(string) Return results with date >= date_received_min (i.e. 2017-03-04)}

\item{has_narrative}{(string array) Filter the results to only return the specified state of whether it has narrative in the complaint or not, i.e. yes, no}

\item{issue}{(string array) Filter the results to only return these types of issue and subissue, i.e. product-only: Getting a Loan, subproduct needs to include product, separated by '•', Getting a Loan•Cant qualify for a loan}

\item{product}{(string array) Filter the results to only return these types of product and subproduct, i.e. product-only: Mortgage, subproduct needs to include product, separated by '•', Mortgage•FHA mortgage}

\item{state}{(string array) Filter the results to only return these states (use abbreviation, i.e. CA, VA)}

\item{submitted_via}{(string array) Filter the results to only return these types of way consumers submitted their complaints}

\item{tags}{(string array) Filter the results to only return these types of tag}

\item{timely}{(string array) Filter the results to show whether a response was timely}

\item{zip_code}{(string array) Zip Code}
}
\value{
A data frame:
\describe{
\item{\code{tags}}{Data that supports easier searching and sorting of complaints submitted by or on behalf of consumers.}
\item{\code{zip_code}}{string}
\item{\code{complaint_id}}{string}
\item{\code{issue}}{factor The issue the consumer identified in the complaint}
\item{\code{date_received}}{POSIXlt The date the CFPB received the complaint}
\item{\code{state}}{factor}
\item{\code{consumer_disputed}}{factor Whether the consumer disputed the company’s response}
\item{\code{product}}{factor The type of product the consumer identified in the complaint}
\item{\code{has_narrative}}{boolean}
\item{\code{company_response}}{factor }
\item{\code{company}}{string The complaint is about this company}
\item{\code{submitted_via}}{factor How the complaint was submitted to the CFPB}
\item{\code{date_sent_to_company}}{POSIXlt The date the CFPB sent the complaint to the company}
\item{\code{company_public_response}}{string The company's optional, public-facing response to a consumer's complaint}
\item{\code{sub_product}}{factor The type of sub-product the consumer identified in the complaint}
\item{\code{timely}}{factor Whether the company gave a timely response}
\item{\code{complaint_what_happened}}{string Consumer complaint narrative is the consumer-submitted description of "what happened" from the complaint.}
\item{\code{sub_issue}}{factor The sub-issue the consumer identified in the complaint}
\item{\code{consumer_consent_provided}}{factor Identifies whether the consumer opted in to publish their complaint narrative.}
}
}
\description{
API docs:  https://cfpb.github.io/api/ccdb/
}
\examples{
\dontrun{
  query_complaints(size = 1)
}

}
