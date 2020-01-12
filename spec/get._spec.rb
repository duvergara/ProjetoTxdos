
describe "Acessar dados meteorológicos atuais para qualquer local na Terra" do 

 it "Acessar dados meteorológicos Pelo nome da cidade" do 
 result = HTTParty.get(
     "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22" ,
      body:{q: "London"}.to_json,
 headers:{
"Content-Type" => "application/jason",
 },
 )
expect(result.response.code).to eql "200"
 

 end 

 it "Acessar dados meteorológicos Pelo Id da cidade" do 
    result = HTTParty.get(
        "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22" ,
         body:{id: "2643743"}.to_json,
    headers:{
   "Content-Type" => "application/jason",
    },
    )
   expect(result.response.code).to eql "200"
   puts result
    
   
    end 

    it "Acessar dados meteorológicos Pelas cordenadas" do 
        result = HTTParty.get(
            "https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22" ,
             body:{lon: "-0.13",lat:"51.51"}.to_json,
        headers:{
       "Content-Type" => "application/jason",
        },
        )
       expect(result.response.code).to eql "200"
        
       
        end 



end

