class WalletController < ApplicationController


  def index



    render({ :template => "wallet/index.html.erb" })
  end  

  def search

    require 'date'
    require 'json'

    date_time = Time.now.strftime("%Y-%m-%dT%H:%M:%S")
    the_merchant_name = params.fetch("merchant_name")

    data = {
      "searchOptions": {
        "matchScore": "true",
        "maxRecords": "10",
        "matchIndicators": "true"
      },
      "header": {
        "requestMessageId": "VCO_GMR_001",
        "startIndex": "0",
        "messageDateTime": date_time
      },
      "searchAttrList": {
        "merchantName": the_merchant_name,
        "merchantCountryCode": "840"
      },
      "responseAttrList": [
        "GNSTANDARD"
      ]
    }

    data_json = data.to_json

    response = RestClient::Request.execute(
      method: :post,
      url: "https://sandbox.api.visa.com/merchantsearch/v2/search",
      headers: { "content-type": "json", cdisiAutoGenId: "CDISIVDP97666-1992148876" },
      payload: data_json,
      user: "ZCFYS1NRGMQRO0AEWIEZ21G4kKduo1ILZFQP7TulgDSAPTEAo", 
      password: "40A0n0GL35lH0",
      ssl_client_key: OpenSSL::PKey::RSA.new(File.read("/home/gitpod/key_d090c415-fd84-4a82-a094-e932ef29db4a.pem")),
      ssl_client_cert: OpenSSL::X509::Certificate.new(File.read("/home/gitpod/cert.pem")),

    )

    parsed_result = JSON.parse(response)
    search_merchant = parsed_result.fetch("merchantSearchServiceResponse")
    search_response = search_merchant.fetch("response").at(0)
    search_response_value = search_response.fetch("responseValues")
    merchant_category_desc = search_response_value.fetch("merchantCategoryCodeDesc")
    primary_mcc = search_response_value.fetch("primaryMerchantCategoryCode")
    all_mcc = search_response_value.fetch("merchantCategoryCode")
    visa_merchant_name = search_response_value.fetch("visaMerchantName")
    @result = all_mcc

    render({ :template => "wallet/search_results.html.erb" })
  end  
end
