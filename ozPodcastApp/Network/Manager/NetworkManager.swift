import Foundation
import Alamofire

final class NetworkManager : NetworkManagerProtocol{
    
    private let config:NetworkConfig //sadece network managerdan kullanılabilsin.
    private let decoder:JSONDecoder
    
    init(config: NetworkConfig, decoder: JSONDecoder = JSONDecoder()) {
        self.config = config
        self.decoder = decoder
        self.decoder.dateDecodingStrategy = .iso8601
    }
    /// Send your request
    /// <#Description#>
    /// - Parameters:
    ///   - path: Network Path
    ///   - method: HttpMethod
    ///   - type: Generic Decodable Type
    ///   - body: Nullable or Encodable
    ///   - paramater: Query params etc.
    /// - Returns: Result with success response or error
    func send<T:Decodable>(
        path:NetworkPathProtocol,
        // TODO NetworkMethod
        method:NetworkMethod,
        type:T.Type,
        body:Encodable? = nil,
        paramater: Parameters? = nil
    ) async -> Result<T?,Error>  {
        let url = config.baseUrl + path.value
        let request:DataRequest
        
        
        
        /// TODO: seperate client ojjects
        if let body = body {
            request = AF.request(url, method: method.alarmofireMethod, parameters: body, encoder: JSONParameterEncoder.default)
    
        } else{
            request = AF.request(url, method: method.alarmofireMethod, parameters: paramater)
        }
        
        let response = await request.validate()
            .serializingDecodable(T.self, decoder:decoder)
            .response
        
        guard let responseValue = response.value else{
            return .failure(response.error ?? NetworkError.unkown)
        }
        
        return .success(responseValue)
        
    }
}
