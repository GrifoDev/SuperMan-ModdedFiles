.class public Lmf/org/apache/xerces/util/EncodingMap;
.super Ljava/lang/Object;
.source "EncodingMap.java"


# static fields
.field protected static final fIANA2JavaMap:Ljava/util/Hashtable;

.field protected static final fJava2IANAMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "BIG5"

    const-string/jumbo v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSBIG5"

    const-string/jumbo v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM037"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-US"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-CA"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-NL"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-WT"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM273"

    const-string/jumbo v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP273"

    const-string/jumbo v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM273"

    const-string/jumbo v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-DK"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-NO"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-FI"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-SE"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-IT"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-ES"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-GB"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-JP-KANA"

    const-string/jumbo v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM290"

    const-string/jumbo v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP290"

    const-string/jumbo v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM290"

    const-string/jumbo v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-FR"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-AR1"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-HE"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM437"

    const-string/jumbo v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "437"

    const-string/jumbo v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP437"

    const-string/jumbo v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSPC8CODEPAGE437"

    const-string/jumbo v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-CH"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-CH"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-BE"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM775"

    const-string/jumbo v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP775"

    const-string/jumbo v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSPC775BALTIC"

    const-string/jumbo v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM850"

    const-string/jumbo v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "850"

    const-string/jumbo v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP850"

    const-string/jumbo v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSPC850MULTILINGUAL"

    const-string/jumbo v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM852"

    const-string/jumbo v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "852"

    const-string/jumbo v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP852"

    const-string/jumbo v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSPCP852"

    const-string/jumbo v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM855"

    const-string/jumbo v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "855"

    const-string/jumbo v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP855"

    const-string/jumbo v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM855"

    const-string/jumbo v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM857"

    const-string/jumbo v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "857"

    const-string/jumbo v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP857"

    const-string/jumbo v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM857"

    const-string/jumbo v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM00858"

    const-string/jumbo v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP00858"

    const-string/jumbo v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID00858"

    const-string/jumbo v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM860"

    const-string/jumbo v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "860"

    const-string/jumbo v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP860"

    const-string/jumbo v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM860"

    const-string/jumbo v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM861"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "861"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP861"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP-IS"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM861"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM862"

    const-string/jumbo v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "862"

    const-string/jumbo v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP862"

    const-string/jumbo v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSPC862LATINHEBREW"

    const-string/jumbo v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM863"

    const-string/jumbo v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "863"

    const-string/jumbo v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP863"

    const-string/jumbo v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM863"

    const-string/jumbo v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM864"

    const-string/jumbo v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP864"

    const-string/jumbo v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM864"

    const-string/jumbo v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM865"

    const-string/jumbo v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "865"

    const-string/jumbo v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP865"

    const-string/jumbo v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM865"

    const-string/jumbo v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM866"

    const-string/jumbo v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "866"

    const-string/jumbo v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP866"

    const-string/jumbo v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM866"

    const-string/jumbo v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP-AR"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP-GR"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-ROECE"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-YU"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-IS"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-CP-AR2"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM00924"

    const-string/jumbo v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP00924"

    const-string/jumbo v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID00924"

    const-string/jumbo v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EBCDIC-LATIN9--EURO"

    const-string/jumbo v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM1026"

    const-string/jumbo v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1026"

    const-string/jumbo v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSIBM1026"

    const-string/jumbo v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01140"

    const-string/jumbo v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01140"

    const-string/jumbo v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01140"

    const-string/jumbo v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01141"

    const-string/jumbo v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01141"

    const-string/jumbo v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01141"

    const-string/jumbo v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01142"

    const-string/jumbo v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01142"

    const-string/jumbo v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01142"

    const-string/jumbo v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01143"

    const-string/jumbo v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01143"

    const-string/jumbo v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01143"

    const-string/jumbo v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01144"

    const-string/jumbo v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01144"

    const-string/jumbo v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01144"

    const-string/jumbo v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01145"

    const-string/jumbo v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01145"

    const-string/jumbo v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01145"

    const-string/jumbo v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01146"

    const-string/jumbo v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01146"

    const-string/jumbo v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01146"

    const-string/jumbo v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01147"

    const-string/jumbo v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01147"

    const-string/jumbo v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01147"

    const-string/jumbo v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01148"

    const-string/jumbo v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01148"

    const-string/jumbo v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01148"

    const-string/jumbo v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM01149"

    const-string/jumbo v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP01149"

    const-string/jumbo v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CCSID01149"

    const-string/jumbo v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EUC-JP"

    const-string/jumbo v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSEUCPKDFMTJAPANESE"

    const-string/jumbo v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    const-string/jumbo v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EUC-KR"

    const-string/jumbo v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSEUCKR"

    const-string/jumbo v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KS_C_5601-1987"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-149"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KS_C_5601-1989"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KSC_5601"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KOREAN"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSKSC56011987"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GB2312"

    const-string/jumbo v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSGB2312"

    const-string/jumbo v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-2022-JP"

    const-string/jumbo v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISO2022JP"

    const-string/jumbo v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-2022-KR"

    const-string/jumbo v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISO2022KR"

    const-string/jumbo v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-2022-CN"

    const-string/jumbo v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "X0201"

    const-string/jumbo v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISO13JISC6220JP"

    const-string/jumbo v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "X0208"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-87"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "X0208dbiJIS_X0208-1983"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISO87JISX0208"

    const-string/jumbo v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "X0212"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-159"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISO159JISX02121990"

    const-string/jumbo v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GB18030"

    const-string/jumbo v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GBK"

    const-string/jumbo v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP936"

    const-string/jumbo v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "MS936"

    const-string/jumbo v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-936"

    const-string/jumbo v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "SHIFT_JIS"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSSHIFTJIS"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "MS_KANJI"

    const-string/jumbo v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-31J"

    const-string/jumbo v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSWINDOWS31J"

    const-string/jumbo v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1250"

    const-string/jumbo v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1251"

    const-string/jumbo v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1252"

    const-string/jumbo v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1253"

    const-string/jumbo v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1254"

    const-string/jumbo v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1255"

    const-string/jumbo v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1256"

    const-string/jumbo v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1257"

    const-string/jumbo v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "WINDOWS-1258"

    const-string/jumbo v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "TIS-620"

    const-string/jumbo v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-100"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATIN1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "L1"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM819"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP819"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-101"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATIN2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "L2"

    const-string/jumbo v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-109"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATIN3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "L3"

    const-string/jumbo v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-110"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATIN4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "L4"

    const-string/jumbo v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-5"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-144"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-5"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CYRILLIC"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATINCYRILLIC"

    const-string/jumbo v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-6"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-127"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-6"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ECMA-114"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ASMO-708"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ARABIC"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATINARABIC"

    const-string/jumbo v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-7"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-126"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-7"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ELOT_928"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ECMA-118"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GREEK"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATINGREEK"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GREEK8"

    const-string/jumbo v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-8"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-8-I"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-138"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-8"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "HEBREW"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATINHEBREW"

    const-string/jumbo v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-9"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-148"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-9"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSISOLATIN5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "L5"

    const-string/jumbo v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-13"

    const-string/jumbo v2, "ISO8859_13"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-8859-15"

    const-string/jumbo v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_8859-15"

    const-string/jumbo v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "LATIN-9"

    const-string/jumbo v2, "ISO8859_15_FDIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KOI8-R"

    const-string/jumbo v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSKOI8R"

    const-string/jumbo v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "US-ASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO-IR-6"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ANSI_X3.4-1968"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ANSI_X3.4-1986"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO_646.IRV:1991"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSASCII"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO646-US"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "US"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM367"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP367"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UTF-8"

    const-string/jumbo v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UTF-16"

    const-string/jumbo v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UTF-16BE"

    const-string/jumbo v2, "UnicodeBig"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UTF-16LE"

    const-string/jumbo v2, "UnicodeLittle"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1047"

    const-string/jumbo v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM1047"

    const-string/jumbo v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1047"

    const-string/jumbo v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-37"

    const-string/jumbo v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-273"

    const-string/jumbo v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-277"

    const-string/jumbo v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-278"

    const-string/jumbo v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-280"

    const-string/jumbo v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-284"

    const-string/jumbo v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-285"

    const-string/jumbo v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-290"

    const-string/jumbo v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-297"

    const-string/jumbo v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-420"

    const-string/jumbo v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-424"

    const-string/jumbo v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-437"

    const-string/jumbo v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-500"

    const-string/jumbo v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-775"

    const-string/jumbo v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-850"

    const-string/jumbo v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-852"

    const-string/jumbo v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-855"

    const-string/jumbo v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-857"

    const-string/jumbo v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-858"

    const-string/jumbo v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-860"

    const-string/jumbo v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-861"

    const-string/jumbo v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-862"

    const-string/jumbo v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-863"

    const-string/jumbo v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-864"

    const-string/jumbo v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-865"

    const-string/jumbo v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-866"

    const-string/jumbo v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-868"

    const-string/jumbo v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-869"

    const-string/jumbo v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-870"

    const-string/jumbo v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-871"

    const-string/jumbo v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-918"

    const-string/jumbo v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-924"

    const-string/jumbo v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1026"

    const-string/jumbo v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1140"

    const-string/jumbo v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1141"

    const-string/jumbo v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1142"

    const-string/jumbo v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1143"

    const-string/jumbo v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1144"

    const-string/jumbo v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1145"

    const-string/jumbo v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1146"

    const-string/jumbo v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1147"

    const-string/jumbo v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1148"

    const-string/jumbo v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-1149"

    const-string/jumbo v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-819"

    const-string/jumbo v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "IBM-367"

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_1"

    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_2"

    const-string/jumbo v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_3"

    const-string/jumbo v2, "ISO-8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_4"

    const-string/jumbo v2, "ISO-8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_5"

    const-string/jumbo v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_6"

    const-string/jumbo v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_7"

    const-string/jumbo v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_8"

    const-string/jumbo v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_9"

    const-string/jumbo v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_13"

    const-string/jumbo v2, "ISO-8859-13"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_15"

    const-string/jumbo v2, "ISO-8859-15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO8859_15_FDIS"

    const-string/jumbo v2, "ISO-8859-15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "Big5"

    const-string/jumbo v2, "BIG5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP037"

    const-string/jumbo v2, "EBCDIC-CP-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP273"

    const-string/jumbo v2, "IBM273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP277"

    const-string/jumbo v2, "EBCDIC-CP-DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP278"

    const-string/jumbo v2, "EBCDIC-CP-FI"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP280"

    const-string/jumbo v2, "EBCDIC-CP-IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP284"

    const-string/jumbo v2, "EBCDIC-CP-ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP285"

    const-string/jumbo v2, "EBCDIC-CP-GB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP290"

    const-string/jumbo v2, "EBCDIC-JP-KANA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP297"

    const-string/jumbo v2, "EBCDIC-CP-FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP420"

    const-string/jumbo v2, "EBCDIC-CP-AR1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP424"

    const-string/jumbo v2, "EBCDIC-CP-HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP437"

    const-string/jumbo v2, "IBM437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP500"

    const-string/jumbo v2, "EBCDIC-CP-CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP775"

    const-string/jumbo v2, "IBM775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP850"

    const-string/jumbo v2, "IBM850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP852"

    const-string/jumbo v2, "IBM852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP855"

    const-string/jumbo v2, "IBM855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP857"

    const-string/jumbo v2, "IBM857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP858"

    const-string/jumbo v2, "IBM00858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP860"

    const-string/jumbo v2, "IBM860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP861"

    const-string/jumbo v2, "IBM861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP862"

    const-string/jumbo v2, "IBM862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP863"

    const-string/jumbo v2, "IBM863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP864"

    const-string/jumbo v2, "IBM864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP865"

    const-string/jumbo v2, "IBM865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP866"

    const-string/jumbo v2, "IBM866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP868"

    const-string/jumbo v2, "IBM868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP869"

    const-string/jumbo v2, "IBM869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP870"

    const-string/jumbo v2, "EBCDIC-CP-ROECE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP871"

    const-string/jumbo v2, "EBCDIC-CP-IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP918"

    const-string/jumbo v2, "EBCDIC-CP-AR2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP924"

    const-string/jumbo v2, "IBM00924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1026"

    const-string/jumbo v2, "IBM1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1140"

    const-string/jumbo v2, "IBM01140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1141"

    const-string/jumbo v2, "IBM01141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1142"

    const-string/jumbo v2, "IBM01142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1143"

    const-string/jumbo v2, "IBM01143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1144"

    const-string/jumbo v2, "IBM01144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1145"

    const-string/jumbo v2, "IBM01145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1146"

    const-string/jumbo v2, "IBM01146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1147"

    const-string/jumbo v2, "IBM01147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1148"

    const-string/jumbo v2, "IBM01148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1149"

    const-string/jumbo v2, "IBM01149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "EUCJIS"

    const-string/jumbo v2, "EUC-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KS_C_5601-1987"

    const-string/jumbo v2, "KS_C_5601-1987"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GB2312"

    const-string/jumbo v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO2022KR"

    const-string/jumbo v2, "ISO-2022-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "ISO2022CN"

    const-string/jumbo v2, "ISO-2022-CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "JIS"

    const-string/jumbo v2, "ISO-2022-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KOI8_R"

    const-string/jumbo v2, "KOI8-R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "KSC5601"

    const-string/jumbo v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GB18030"

    const-string/jumbo v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "GBK"

    const-string/jumbo v2, "GBK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "SJIS"

    const-string/jumbo v2, "SHIFT_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "MS932"

    const-string/jumbo v2, "WINDOWS-31J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UTF8"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "Unicode"

    const-string/jumbo v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UnicodeBig"

    const-string/jumbo v2, "UTF-16BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "UnicodeLittle"

    const-string/jumbo v2, "UTF-16LE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "JIS0201"

    const-string/jumbo v2, "X0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "JIS0208"

    const-string/jumbo v2, "X0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "JIS0212"

    const-string/jumbo v2, "ISO-IR-159"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string/jumbo v1, "CP1047"

    const-string/jumbo v2, "IBM1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static putIANA2JavaMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putJava2IANAMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static removeJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
