% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_all_complaints.R
\name{get_all_complaints}
\alias{get_all_complaints}
\title{Get all CFPB complaints}
\usage{
get_all_complaints(quiet = TRUE, file = NA)
}
\arguments{
\item{quiet}{Should progress messages be printed?}

\item{file}{if NA, the file will be downloaded.  If a file exists, it will be read and transformed.  If the file does not exist, it will be created.}
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
Get all CFPB complaints
}
\examples{
\dontrun{
  test <- get_all_complaints()
}
}
