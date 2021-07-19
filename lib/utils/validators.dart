String? completeNameValidator(String nom) {
  return nom.length<3 ? "Entrer un prénom d'au moins 6 lettres" : null;
}String? idValidator(String id) {
  return id.length<6 ? "Entrer un prénom d'au moins 6 lettres" : null;
}
String? cniValidator(String cni) {
  return cni.length<11 ? "Entrer un numéro valide" : null;
}
final RegExp emailVal = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
String? emailValidator(String email) {
  return !emailVal.hasMatch(email) ? 'Entrer une email valide' : null;
}
String? telValidator(String tel) {
  return tel.length<8 ? "Entrer un numéro d'au moins 8 chiffres" : null;
}

String? pinValidator(String pin) {
  return pin.length<4 ? "Entrer un mot de passe d'au moins 4 chiffres" : null;
}

String? pinConfirmValidator(String confirmation, String password) {
  return pinValidator(confirmation) ??
      ((password == confirmation)
          ? null
          : 'Les mots de passe ne sont pas identiques');
}
