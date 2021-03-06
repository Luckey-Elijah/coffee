import '../enums/country.dart';

/// Useful extensions on the enum [Country].
extension CountryX on Country {
  /// Convert this country code to it's string representation.
  ///
  /// Example:
  /// ```dart
  /// var usCode = Country.US;
  /// assert('United States' == usCode.codeToString());
  /// ```
  String codeToString() {
    switch (this) {
      case Country.AF:
        return 'Afghanistan';
      case Country.AX:
        return 'Åland Islands';
      case Country.AL:
        return 'Albania';
      case Country.DZ:
        return 'Algeria';
      case Country.AS:
        return 'American Samoa';
      case Country.AD:
        return 'Andorra';
      case Country.AO:
        return 'Angola';
      case Country.AI:
        return 'Anguilla';
      case Country.AQ:
        return 'Antarctica';
      case Country.AG:
        return 'Antigua & Barbuda';
      case Country.AR:
        return 'Argentina';
      case Country.AM:
        return 'Armenia';
      case Country.AW:
        return 'Aruba';
      case Country.AU:
        return 'Australia';
      case Country.AT:
        return 'Austria';
      case Country.AZ:
        return 'Azerbaijan';
      case Country.BS:
        return 'Bahamas';
      case Country.BH:
        return 'Bahrain';
      case Country.BD:
        return 'Bangladesh';
      case Country.BB:
        return 'Barbados';
      case Country.BY:
        return 'Belarus';
      case Country.BE:
        return 'Belgium';
      case Country.BZ:
        return 'Belize';
      case Country.BJ:
        return 'Benin';
      case Country.BM:
        return 'Bermuda';
      case Country.BT:
        return 'Bhutan';
      case Country.BO:
        return 'Bolivia';
      case Country.BA:
        return 'Bosnia & Herzegovina';
      case Country.BW:
        return 'Botswana';
      case Country.BV:
        return 'Bouvet Island';
      case Country.BR:
        return 'Brazil';
      case Country.IO:
        return 'British Indian Ocean Territory';
      case Country.VG:
        return 'British Virgin Islands';
      case Country.BN:
        return 'Brunei';
      case Country.BG:
        return 'Bulgaria';
      case Country.BF:
        return 'Burkina Faso';
      case Country.BI:
        return 'Burundi';
      case Country.KH:
        return 'Cambodia';
      case Country.CM:
        return 'Cameroon';
      case Country.CA:
        return 'Canada';
      case Country.CV:
        return 'Cape Verde';
      case Country.BQ:
        return 'Caribbean Netherlands';
      case Country.KY:
        return 'Cayman Islands';
      case Country.CF:
        return 'Central African Republic';
      case Country.TD:
        return 'Chad';
      case Country.CL:
        return 'Chile';
      case Country.CN:
        return 'China';
      case Country.CX:
        return 'Christmas Island';
      case Country.CC:
        return 'Cocos (Keeling) Islands';
      case Country.CO:
        return 'Colombia';
      case Country.KM:
        return 'Comoros';
      case Country.CG:
        return 'Congo - Brazzaville';
      case Country.CD:
        return 'Congo - Kinshasa';
      case Country.CK:
        return 'Cook Islands';
      case Country.CR:
        return 'Costa Rica';
      case Country.CI:
        return 'Côte d’Ivoire';
      case Country.HR:
        return 'Croatia';
      case Country.CU:
        return 'Cuba';
      case Country.CW:
        return 'Curaçao';
      case Country.CY:
        return 'Cyprus';
      case Country.CZ:
        return 'Czechia';
      case Country.DK:
        return 'Denmark';
      case Country.DJ:
        return 'Djibouti';
      case Country.DM:
        return 'Dominica';
      case Country.DO:
        return 'Dominican Republic';
      case Country.EC:
        return 'Ecuador';
      case Country.EG:
        return 'Egypt';
      case Country.SV:
        return 'El Salvador';
      case Country.GQ:
        return 'Equatorial Guinea';
      case Country.ER:
        return 'Eritrea';
      case Country.EE:
        return 'Estonia';
      case Country.SZ:
        return 'Eswatini';
      case Country.ET:
        return 'Ethiopia';
      case Country.FK:
        return 'Falkland Islands';
      case Country.FO:
        return 'Faroe Islands';
      case Country.FJ:
        return 'Fiji';
      case Country.FI:
        return 'Finland';
      case Country.FR:
        return 'France';
      case Country.GF:
        return 'French Guiana';
      case Country.PF:
        return 'French Polynesia';
      case Country.TF:
        return 'French Southern Territories';
      case Country.GA:
        return 'Gabon';
      case Country.GM:
        return 'Gambia';
      case Country.GE:
        return 'Georgia';
      case Country.DE:
        return 'Germany';
      case Country.GH:
        return 'Ghana';
      case Country.GI:
        return 'Gibraltar';
      case Country.GR:
        return 'Greece';
      case Country.GL:
        return 'Greenland';
      case Country.GD:
        return 'Grenada';
      case Country.GP:
        return 'Guadeloupe';
      case Country.GU:
        return 'Guam';
      case Country.GT:
        return 'Guatemala';
      case Country.GG:
        return 'Guernsey';
      case Country.GN:
        return 'Guinea';
      case Country.GW:
        return 'Guinea-Bissau';
      case Country.GY:
        return 'Guyana';
      case Country.HT:
        return 'Haiti';
      case Country.HM:
        return 'Heard & McDonald Islands';
      case Country.HN:
        return 'Honduras';
      case Country.HK:
        return 'Hong Kong SAR China';
      case Country.HU:
        return 'Hungary';
      case Country.IS:
        return 'Iceland';
      case Country.IN:
        return 'India';
      case Country.ID:
        return 'Indonesia';
      case Country.IR:
        return 'Iran';
      case Country.IQ:
        return 'Iraq';
      case Country.IE:
        return 'Ireland';
      case Country.IM:
        return 'Isle of Man';
      case Country.IL:
        return 'Israel';
      case Country.IT:
        return 'Italy';
      case Country.JM:
        return 'Jamaica';
      case Country.JP:
        return 'Japan';
      case Country.JE:
        return 'Jersey';
      case Country.JO:
        return 'Jordan';
      case Country.KZ:
        return 'Kazakhstan';
      case Country.KE:
        return 'Kenya';
      case Country.KI:
        return 'Kiribati';
      case Country.KW:
        return 'Kuwait';
      case Country.KG:
        return 'Kyrgyzstan';
      case Country.LA:
        return 'Laos';
      case Country.LV:
        return 'Latvia';
      case Country.LB:
        return 'Lebanon';
      case Country.LS:
        return 'Lesotho';
      case Country.LR:
        return 'Liberia';
      case Country.LY:
        return 'Libya';
      case Country.LI:
        return 'Liechtenstein';
      case Country.LT:
        return 'Lithuania';
      case Country.LU:
        return 'Luxembourg';
      case Country.MO:
        return 'Macao SAR China';
      case Country.MG:
        return 'Madagascar';
      case Country.MW:
        return 'Malawi';
      case Country.MY:
        return 'Malaysia';
      case Country.MV:
        return 'Maldives';
      case Country.ML:
        return 'Mali';
      case Country.MT:
        return 'Malta';
      case Country.MH:
        return 'Marshall Islands';
      case Country.MQ:
        return 'Martinique';
      case Country.MR:
        return 'Mauritania';
      case Country.MU:
        return 'Mauritius';
      case Country.YT:
        return 'Mayotte';
      case Country.MX:
        return 'Mexico';
      case Country.FM:
        return 'Micronesia';
      case Country.MD:
        return 'Moldova';
      case Country.MC:
        return 'Monaco';
      case Country.MN:
        return 'Mongolia';
      case Country.ME:
        return 'Montenegro';
      case Country.MS:
        return 'Montserrat';
      case Country.MA:
        return 'Morocco';
      case Country.MZ:
        return 'Mozambique';
      case Country.MM:
        return 'Myanmar (Burma)';
      case Country.NA:
        return 'Namibia';
      case Country.NR:
        return 'Nauru';
      case Country.NP:
        return 'Nepal';
      case Country.NL:
        return 'Netherlands';
      case Country.NC:
        return 'New Caledonia';
      case Country.NZ:
        return 'New Zealand';
      case Country.NI:
        return 'Nicaragua';
      case Country.NE:
        return 'Niger';
      case Country.NG:
        return 'Nigeria';
      case Country.NU:
        return 'Niue';
      case Country.NF:
        return 'Norfolk Island';
      case Country.KP:
        return 'North Korea';
      case Country.MK:
        return 'North Macedonia';
      case Country.MP:
        return 'Northern Mariana Islands';
      case Country.NO:
        return 'Norway';
      case Country.OM:
        return 'Oman';
      case Country.PK:
        return 'Pakistan';
      case Country.PW:
        return 'Palau';
      case Country.PS:
        return 'Palestinian Territories';
      case Country.PA:
        return 'Panama';
      case Country.PG:
        return 'Papua New Guinea';
      case Country.PY:
        return 'Paraguay';
      case Country.PE:
        return 'Peru';
      case Country.PH:
        return 'Philippines';
      case Country.PN:
        return 'Pitcairn Islands';
      case Country.PL:
        return 'Poland';
      case Country.PT:
        return 'Portugal';
      case Country.PR:
        return 'Puerto Rico';
      case Country.QA:
        return 'Qatar';
      case Country.RE:
        return 'Réunion';
      case Country.RO:
        return 'Romania';
      case Country.RU:
        return 'Russia';
      case Country.RW:
        return 'Rwanda';
      case Country.WS:
        return 'Samoa';
      case Country.SM:
        return 'San Marino';
      case Country.ST:
        return 'São Tomé & Príncipe';
      case Country.SA:
        return 'Saudi Arabia';
      case Country.SN:
        return 'Senegal';
      case Country.RS:
        return 'Serbia';
      case Country.SC:
        return 'Seychelles';
      case Country.SL:
        return 'Sierra Leone';
      case Country.SG:
        return 'Singapore';
      case Country.SX:
        return 'Sint Maarten';
      case Country.SK:
        return 'Slovakia';
      case Country.SI:
        return 'Slovenia';
      case Country.SB:
        return 'Solomon Islands';
      case Country.SO:
        return 'Somalia';
      case Country.ZA:
        return 'South Africa';
      case Country.GS:
        return 'South Georgia & South Sandwich Islands';
      case Country.KR:
        return 'South Korea';
      case Country.SS:
        return 'South Sudan';
      case Country.ES:
        return 'Spain';
      case Country.LK:
        return 'Sri Lanka';
      case Country.BL:
        return 'St. Barthélemy';
      case Country.SH:
        return 'St. Helena';
      case Country.KN:
        return 'St. Kitts & Nevis';
      case Country.LC:
        return 'St. Lucia';
      case Country.MF:
        return 'St. Martin';
      case Country.PM:
        return 'St. Pierre & Miquelon';
      case Country.VC:
        return 'St. Vincent & Grenadines';
      case Country.SD:
        return 'Sudan';
      case Country.SR:
        return 'Suriname';
      case Country.SJ:
        return 'Svalbard & Jan Mayen';
      case Country.SE:
        return 'Sweden';
      case Country.CH:
        return 'Switzerland';
      case Country.SY:
        return 'Syria';
      case Country.TW:
        return 'Taiwan';
      case Country.TJ:
        return 'Tajikistan';
      case Country.TZ:
        return 'Tanzania';
      case Country.TH:
        return 'Thailand';
      case Country.TL:
        return 'Timor-Leste';
      case Country.TG:
        return 'Togo';
      case Country.TK:
        return 'Tokelau';
      case Country.TO:
        return 'Tonga';
      case Country.TT:
        return 'Trinidad & Tobago';
      case Country.TN:
        return 'Tunisia';
      case Country.TR:
        return 'Turkey';
      case Country.TM:
        return 'Turkmenistan';
      case Country.TC:
        return 'Turks & Caicos Islands';
      case Country.TV:
        return 'Tuvalu';
      case Country.UM:
        return 'U.S. Outlying Islands';
      case Country.VI:
        return 'U.S. Virgin Islands';
      case Country.UG:
        return 'Uganda';
      case Country.UA:
        return 'Ukraine';
      case Country.AE:
        return 'United Arab Emirates';
      case Country.GB:
        return 'United Kingdom';
      case Country.US:
        return 'United States';
      case Country.UY:
        return 'Uruguay';
      case Country.UZ:
        return 'Uzbekistan';
      case Country.VU:
        return 'Vanuatu';
      case Country.VA:
        return 'Vatican City';
      case Country.VE:
        return 'Venezuela';
      case Country.VN:
        return 'Vietnam';
      case Country.WF:
        return 'Wallis & Futuna';
      case Country.EH:
        return 'Western Sahara';
      case Country.YE:
        return 'Yemen';
      case Country.ZM:
        return 'Zambia';
      case Country.ZW:
        return 'Zimbabwe';
      case Country.unknown:
        return 'unknown';
      default:
        return 'unknown';
    }
  }
}
