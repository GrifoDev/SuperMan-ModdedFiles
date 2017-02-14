.class Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
.source "ParserForXMLSchema.java"


# static fields
.field private static final DIGITS:Ljava/lang/String; = "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

.field private static final LETTERS:Ljava/lang/String; = "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

.field private static final NAMECHARS:Ljava/lang/String; = "-.0:AZ__az\u00b7\u00b7\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u02d0\u02d1\u0300\u0345\u0360\u0361\u0386\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0483\u0486\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u0591\u05a1\u05a3\u05b9\u05bb\u05bd\u05bf\u05bf\u05c1\u05c2\u05c4\u05c4\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0640\u0652\u0660\u0669\u0670\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06e8\u06ea\u06ed\u06f0\u06f9\u0901\u0903\u0905\u0939\u093c\u094d\u0951\u0954\u0958\u0963\u0966\u096f\u0981\u0983\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09bc\u09bc\u09be\u09c4\u09c7\u09c8\u09cb\u09cd\u09d7\u09d7\u09dc\u09dd\u09df\u09e3\u09e6\u09f1\u0a02\u0a02\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a3c\u0a3c\u0a3e\u0a42\u0a47\u0a48\u0a4b\u0a4d\u0a59\u0a5c\u0a5e\u0a5e\u0a66\u0a74\u0a81\u0a83\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abc\u0ac5\u0ac7\u0ac9\u0acb\u0acd\u0ae0\u0ae0\u0ae6\u0aef\u0b01\u0b03\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3c\u0b43\u0b47\u0b48\u0b4b\u0b4d\u0b56\u0b57\u0b5c\u0b5d\u0b5f\u0b61\u0b66\u0b6f\u0b82\u0b83\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0bbe\u0bc2\u0bc6\u0bc8\u0bca\u0bcd\u0bd7\u0bd7\u0be7\u0bef\u0c01\u0c03\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c3e\u0c44\u0c46\u0c48\u0c4a\u0c4d\u0c55\u0c56\u0c60\u0c61\u0c66\u0c6f\u0c82\u0c83\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cbe\u0cc4\u0cc6\u0cc8\u0cca\u0ccd\u0cd5\u0cd6\u0cde\u0cde\u0ce0\u0ce1\u0ce6\u0cef\u0d02\u0d03\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d3e\u0d43\u0d46\u0d48\u0d4a\u0d4d\u0d57\u0d57\u0d60\u0d61\u0d66\u0d6f\u0e01\u0e2e\u0e30\u0e3a\u0e40\u0e4e\u0e50\u0e59\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb9\u0ebb\u0ebd\u0ec0\u0ec4\u0ec6\u0ec6\u0ec8\u0ecd\u0ed0\u0ed9\u0f18\u0f19\u0f20\u0f29\u0f35\u0f35\u0f37\u0f37\u0f39\u0f39\u0f3e\u0f47\u0f49\u0f69\u0f71\u0f84\u0f86\u0f8b\u0f90\u0f95\u0f97\u0f97\u0f99\u0fad\u0fb1\u0fb7\u0fb9\u0fb9\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u20d0\u20dc\u20e1\u20e1\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3005\u3005\u3007\u3007\u3021\u302f\u3031\u3035\u3041\u3094\u3099\u309a\u309d\u309e\u30a1\u30fa\u30fc\u30fe\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

.field private static final SPACES:Ljava/lang/String; = "\t\n\r\r  "

.field private static ranges:Ljava/util/Hashtable;

.field private static ranges2:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method protected static declared-synchronized getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 4

    const-class v1, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    :goto_0
    if-nez p1, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v2, "\t\n\r\r  "

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isSpace"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isSpace"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v2, "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isDigit"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isDigit"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v2, "09\u0660\u0669\u06f0\u06f9\u0966\u096f\u09e6\u09ef\u0a66\u0a6f\u0ae6\u0aef\u0b66\u0b6f\u0be7\u0bef\u0c66\u0c6f\u0ce6\u0cef\u0d66\u0d6f\u0e50\u0e59\u0ed0\u0ed9\u0f20\u0f29"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isDigit"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isDigit"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    const-string/jumbo v0, "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isDigit"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isWord"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isWord"

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v2, "-.0:AZ__az\u00b7\u00b7\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u02d0\u02d1\u0300\u0345\u0360\u0361\u0386\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0483\u0486\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u0591\u05a1\u05a3\u05b9\u05bb\u05bd\u05bf\u05bf\u05c1\u05c2\u05c4\u05c4\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0640\u0652\u0660\u0669\u0670\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06e8\u06ea\u06ed\u06f0\u06f9\u0901\u0903\u0905\u0939\u093c\u094d\u0951\u0954\u0958\u0963\u0966\u096f\u0981\u0983\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09bc\u09bc\u09be\u09c4\u09c7\u09c8\u09cb\u09cd\u09d7\u09d7\u09dc\u09dd\u09df\u09e3\u09e6\u09f1\u0a02\u0a02\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a3c\u0a3c\u0a3e\u0a42\u0a47\u0a48\u0a4b\u0a4d\u0a59\u0a5c\u0a5e\u0a5e\u0a66\u0a74\u0a81\u0a83\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abc\u0ac5\u0ac7\u0ac9\u0acb\u0acd\u0ae0\u0ae0\u0ae6\u0aef\u0b01\u0b03\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3c\u0b43\u0b47\u0b48\u0b4b\u0b4d\u0b56\u0b57\u0b5c\u0b5d\u0b5f\u0b61\u0b66\u0b6f\u0b82\u0b83\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0bbe\u0bc2\u0bc6\u0bc8\u0bca\u0bcd\u0bd7\u0bd7\u0be7\u0bef\u0c01\u0c03\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c3e\u0c44\u0c46\u0c48\u0c4a\u0c4d\u0c55\u0c56\u0c60\u0c61\u0c66\u0c6f\u0c82\u0c83\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cbe\u0cc4\u0cc6\u0cc8\u0cca\u0ccd\u0cd5\u0cd6\u0cde\u0cde\u0ce0\u0ce1\u0ce6\u0cef\u0d02\u0d03\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d3e\u0d43\u0d46\u0d48\u0d4a\u0d4d\u0d57\u0d57\u0d60\u0d61\u0d66\u0d6f\u0e01\u0e2e\u0e30\u0e3a\u0e40\u0e4e\u0e50\u0e59\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb9\u0ebb\u0ebd\u0ec0\u0ec4\u0ec6\u0ec6\u0ec8\u0ecd\u0ed0\u0ed9\u0f18\u0f19\u0f20\u0f29\u0f35\u0f35\u0f37\u0f37\u0f39\u0f39\u0f3e\u0f47\u0f49\u0f69\u0f71\u0f84\u0f86\u0f8b\u0f90\u0f95\u0f97\u0f97\u0f99\u0fad\u0fb1\u0fb7\u0fb9\u0fb9\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u20d0\u20dc\u20e1\u20e1\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3005\u3005\u3007\u3007\u3021\u302f\u3031\u3035\u3041\u3094\u3099\u309a\u309d\u309e\u30a1\u30fa\u30fc\u30fe\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isNameChar"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isNameChar"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v2, "AZaz\u00c0\u00d6\u00d8\u00f6\u00f8\u0131\u0134\u013e\u0141\u0148\u014a\u017e\u0180\u01c3\u01cd\u01f0\u01f4\u01f5\u01fa\u0217\u0250\u02a8\u02bb\u02c1\u0386\u0386\u0388\u038a\u038c\u038c\u038e\u03a1\u03a3\u03ce\u03d0\u03d6\u03da\u03da\u03dc\u03dc\u03de\u03de\u03e0\u03e0\u03e2\u03f3\u0401\u040c\u040e\u044f\u0451\u045c\u045e\u0481\u0490\u04c4\u04c7\u04c8\u04cb\u04cc\u04d0\u04eb\u04ee\u04f5\u04f8\u04f9\u0531\u0556\u0559\u0559\u0561\u0586\u05d0\u05ea\u05f0\u05f2\u0621\u063a\u0641\u064a\u0671\u06b7\u06ba\u06be\u06c0\u06ce\u06d0\u06d3\u06d5\u06d5\u06e5\u06e6\u0905\u0939\u093d\u093d\u0958\u0961\u0985\u098c\u098f\u0990\u0993\u09a8\u09aa\u09b0\u09b2\u09b2\u09b6\u09b9\u09dc\u09dd\u09df\u09e1\u09f0\u09f1\u0a05\u0a0a\u0a0f\u0a10\u0a13\u0a28\u0a2a\u0a30\u0a32\u0a33\u0a35\u0a36\u0a38\u0a39\u0a59\u0a5c\u0a5e\u0a5e\u0a72\u0a74\u0a85\u0a8b\u0a8d\u0a8d\u0a8f\u0a91\u0a93\u0aa8\u0aaa\u0ab0\u0ab2\u0ab3\u0ab5\u0ab9\u0abd\u0abd\u0ae0\u0ae0\u0b05\u0b0c\u0b0f\u0b10\u0b13\u0b28\u0b2a\u0b30\u0b32\u0b33\u0b36\u0b39\u0b3d\u0b3d\u0b5c\u0b5d\u0b5f\u0b61\u0b85\u0b8a\u0b8e\u0b90\u0b92\u0b95\u0b99\u0b9a\u0b9c\u0b9c\u0b9e\u0b9f\u0ba3\u0ba4\u0ba8\u0baa\u0bae\u0bb5\u0bb7\u0bb9\u0c05\u0c0c\u0c0e\u0c10\u0c12\u0c28\u0c2a\u0c33\u0c35\u0c39\u0c60\u0c61\u0c85\u0c8c\u0c8e\u0c90\u0c92\u0ca8\u0caa\u0cb3\u0cb5\u0cb9\u0cde\u0cde\u0ce0\u0ce1\u0d05\u0d0c\u0d0e\u0d10\u0d12\u0d28\u0d2a\u0d39\u0d60\u0d61\u0e01\u0e2e\u0e30\u0e30\u0e32\u0e33\u0e40\u0e45\u0e81\u0e82\u0e84\u0e84\u0e87\u0e88\u0e8a\u0e8a\u0e8d\u0e8d\u0e94\u0e97\u0e99\u0e9f\u0ea1\u0ea3\u0ea5\u0ea5\u0ea7\u0ea7\u0eaa\u0eab\u0ead\u0eae\u0eb0\u0eb0\u0eb2\u0eb3\u0ebd\u0ebd\u0ec0\u0ec4\u0f40\u0f47\u0f49\u0f69\u10a0\u10c5\u10d0\u10f6\u1100\u1100\u1102\u1103\u1105\u1107\u1109\u1109\u110b\u110c\u110e\u1112\u113c\u113c\u113e\u113e\u1140\u1140\u114c\u114c\u114e\u114e\u1150\u1150\u1154\u1155\u1159\u1159\u115f\u1161\u1163\u1163\u1165\u1165\u1167\u1167\u1169\u1169\u116d\u116e\u1172\u1173\u1175\u1175\u119e\u119e\u11a8\u11a8\u11ab\u11ab\u11ae\u11af\u11b7\u11b8\u11ba\u11ba\u11bc\u11c2\u11eb\u11eb\u11f0\u11f0\u11f9\u11f9\u1e00\u1e9b\u1ea0\u1ef9\u1f00\u1f15\u1f18\u1f1d\u1f20\u1f45\u1f48\u1f4d\u1f50\u1f57\u1f59\u1f59\u1f5b\u1f5b\u1f5d\u1f5d\u1f5f\u1f7d\u1f80\u1fb4\u1fb6\u1fbc\u1fbe\u1fbe\u1fc2\u1fc4\u1fc6\u1fcc\u1fd0\u1fd3\u1fd6\u1fdb\u1fe0\u1fec\u1ff2\u1ff4\u1ff6\u1ffc\u2126\u2126\u212a\u212b\u212e\u212e\u2180\u2182\u3007\u3007\u3021\u3029\u3041\u3094\u30a1\u30fa\u3105\u312c\u4e00\u9fa5\uac00\ud7a3"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V

    const/16 v2, 0x5f

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isInitialNameChar"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges2:Ljava/util/Hashtable;

    const-string/jumbo v3, "xml:isInitialNameChar"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ranges:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method static setupRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method checkQuestion(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method decodeEscaped()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_0
    const-string/jumbo v0, "parser.next.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :sswitch_0
    const/16 v0, 0xd

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x3f -> :sswitch_3
        0x5b -> :sswitch_3
        0x5c -> :sswitch_3
        0x5d -> :sswitch_3
        0x5e -> :sswitch_3
        0x6e -> :sswitch_1
        0x72 -> :sswitch_0
        0x74 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7c -> :sswitch_3
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Internal Error: shorthands: \\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v0, "xml:isDigit"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "xml:isDigit"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "xml:isWord"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "xml:isWord"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "xml:isSpace"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "xml:isSpace"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "xml:isNameChar"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "xml:isNameChar"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "xml:isInitialNameChar"

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "xml:isInitialNameChar"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_7
        0x44 -> :sswitch_1
        0x49 -> :sswitch_9
        0x53 -> :sswitch_5
        0x57 -> :sswitch_3
        0x63 -> :sswitch_6
        0x64 -> :sswitch_0
        0x69 -> :sswitch_8
        0x73 -> :sswitch_4
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const v12, 0xffff

    const/16 v11, 0x5d

    const/16 v10, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setContext(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    move v2, v4

    :goto_0
    move v7, v3

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v8

    if-eq v8, v3, :cond_5

    if-eqz v8, :cond_4

    :cond_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    const/16 v6, 0xa

    if-eq v8, v6, :cond_7

    const/16 v6, 0x18

    if-eq v8, v6, :cond_a

    :cond_2
    move v6, v5

    move v5, v4

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    if-eqz v5, :cond_e

    :goto_3
    move v7, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    const v0, 0x10ffff

    invoke-virtual {v1, v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    move v2, v3

    goto :goto_0

    :cond_4
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-ne v5, v11, :cond_1

    if-nez v7, :cond_1

    if-nez v2, :cond_6

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v1

    if-eq v1, v3, :cond_27

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->setContext(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    return-object v0

    :cond_6
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v1

    goto :goto_4

    :cond_7
    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->decodeEscaped()I

    move-result v5

    move v6, v5

    move v5, v4

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move v6, v5

    move v5, v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v5

    if-ltz v5, :cond_8

    move v6, v5

    move v5, v4

    goto :goto_2

    :cond_8
    move v6, v5

    move v5, v3

    goto :goto_2

    :sswitch_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move v6, v5

    move v5, v3

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "parser.atom.5"

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->decodeEscaped()I

    move-result v5

    move v6, v5

    move v5, v4

    goto :goto_2

    :cond_a
    if-nez v7, :cond_2

    if-nez v2, :cond_c

    :goto_5
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    const-string/jumbo v0, "parser.cc.5"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v0, v1

    goto :goto_5

    :cond_d
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-ne v1, v11, :cond_b

    goto :goto_4

    :cond_e
    if-eqz v8, :cond_12

    :cond_f
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v5

    if-eqz v5, :cond_15

    :cond_10
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_11
    invoke-virtual {v0, v6, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    :cond_12
    const/16 v5, 0x5b

    if-eq v6, v5, :cond_13

    if-eq v6, v11, :cond_14

    if-ne v6, v10, :cond_f

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-eq v5, v11, :cond_f

    if-nez v7, :cond_f

    const-string/jumbo v0, "parser.cc.8"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    const-string/jumbo v0, "parser.cc.6"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_14
    const-string/jumbo v0, "parser.cc.7"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_15
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-ne v5, v10, :cond_10

    if-eq v6, v10, :cond_19

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v7

    if-eq v7, v3, :cond_1b

    if-eqz v7, :cond_1c

    :cond_16
    const/16 v5, 0x18

    if-eq v7, v5, :cond_1f

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-eqz v7, :cond_20

    const/16 v8, 0xa

    if-eq v7, v8, :cond_23

    :cond_17
    :goto_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    if-gt v6, v5, :cond_24

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->isSet(I)Z

    move-result v7

    if-nez v7, :cond_25

    :cond_18
    invoke-virtual {v0, v6, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    :cond_19
    if-nez v7, :cond_10

    goto :goto_6

    :cond_1a
    if-gt v6, v12, :cond_11

    invoke-static {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto/16 :goto_3

    :cond_1b
    const-string/jumbo v0, "parser.cc.2"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_1c
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->chardata:I

    if-ne v5, v11, :cond_16

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1d
    invoke-virtual {v0, v6, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_8
    invoke-virtual {v0, v10, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    :cond_1e
    if-gt v6, v12, :cond_1d

    invoke-static {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_8

    :cond_1f
    const-string/jumbo v0, "parser.cc.8"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_20
    const/16 v7, 0x5b

    if-eq v5, v7, :cond_21

    if-eq v5, v11, :cond_22

    if-ne v5, v10, :cond_17

    const-string/jumbo v0, "parser.cc.8"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_21
    const-string/jumbo v0, "parser.cc.6"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_22
    const-string/jumbo v0, "parser.cc.7"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_23
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->decodeEscaped()I

    move-result v5

    goto :goto_7

    :cond_24
    const-string/jumbo v0, "parser.ope.3"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :cond_25
    if-gt v6, v12, :cond_26

    :goto_9
    invoke-static {v0, v6, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V

    goto/16 :goto_3

    :cond_26
    if-gt v5, v12, :cond_18

    goto :goto_9

    :cond_27
    const-string/jumbo v0, "parser.cc.2"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_3
        0x43 -> :sswitch_1
        0x44 -> :sswitch_0
        0x49 -> :sswitch_1
        0x50 -> :sswitch_2
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x70 -> :sswitch_2
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method protected parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 1

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v0, -0x1

    return v0
.end method

.method processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x5e

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    return-object v0
.end method

.method processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    const/16 v0, 0x24

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    return-object v0
.end method

.method processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->read()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    return-object v0

    :cond_0
    const-string/jumbo v0, "parser.factor.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    return-object v0
.end method

.method processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    return-object v0
.end method
