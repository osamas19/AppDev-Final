#require 'rest-client'
#require 'unirest'
require 'date'
#require 'json'

date_time = Time.now.strftime("%Y-%m-%dT%H:%M:%S")

begin
response = RestClient::Request.execute(
  method: :post,
  url: "https://sandbox.api.visa.com/merchantsearch/v2/search",
  headers: { "content-type": "application/json", cdisiAutoGenId: "CDISIVDP97666-1992148876" },
  payload: {
    "searchOptions": {
      "matchScore": "true",
      "maxRecords": "10",
      "matchIndicators": "true"
    },
    "header": {
      "requestMessageId": "VCO_GMR_001",
      "startIndex": "0",
      "messageDateTime": "2023-03-01T00:59:24.000"
    },
    "searchAttrList": {
      "merchantName": "starbucks ",
      "merchantCountryCode": "840"
    },
    "responseAttrList": [
      "GNSTANDARD"
    ]
  },
  user: "ZCFYS1NRGMQRO0AEWIEZ21G4kKduo1ILZFQP7TulgDSAPTEAo", 
  password: "40A0n0GL35lH0",
  ssl_client_key: OpenSSL::PKey::RSA.new(File.read("/home/gitpod/key_d090c415-fd84-4a82-a094-e932ef29db4a.pem")),
  ssl_client_cert: OpenSSL::X509::Certificate.new(File.read("/home/gitpod/cert.pem")),
  #ssl_ca_file: "/home/gitpod/VDPCA-SBX.pem"
)
rescue RestClient::ExceptionWithResponse => e
response = e.response
print JSON.parse(response)
end
