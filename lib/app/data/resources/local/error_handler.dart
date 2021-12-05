import 'package:dio/dio.dart';

Map<String, dynamic> returnResponse(Response<dynamic>? response) {
  Map<String, dynamic> map;
  try {
    switch (response!.statusCode) {
      case 200:
        map = {
          "data": response.data,
          "error": null,
          "msg": null,
        };
        return map;
      case 400:
        return map = {
          "data": null,
          "error": "Solicitud No Valida:",
          "msg": response.data['msg'],
        };
      //throw BadRequestException(responseJson['msg']);
      case 403:
        return map = {
          "data": null,
          "error": "No Autorizado:",
          "msg": response.data['msg'],
        };
      //throw UnauthorizedException(responseJson['msg']);
      case 404:
        return map = {
          "data": null,
          "error": "No Encontrado:",
          "msg": "No se ha encontrado el servidor",
        };
      //throw NotFoundException(responseJson['msg']);
      case 500:
        return map = {
          "data": null,
          "error": "Error De Servidor Interno: ",
          "msg": response.data['msg'],
        };
      //throw InternalServerException(responseJson['msg']);
      case 20201:
        return map = {
          "data": null,
          "error": "Oh no!: ",
          "msg": response.data['msg'],
        };
      //throw InvalidInputException(responseJson['msg']);
      default:
        return map = {
          "data": null,
          "error":
              "Se produjo un error al comunicarse con el servidor con código de estado : ",
          "msg": "Codigo: ${response.statusCode}",
        };
    }
  } catch (e) {
     map = {
          "data": null,
          "error":
              "Se produjo un error al comunicarse con el servidor: ",
          "msg": "Codigo: 404",
        };
        return map;
  }
}
