.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    const v0, 0x10803db

    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803dc

    const-string/jumbo v1, "application/ogg"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-flac"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803dd

    const-string/jumbo v1, "application/pgp-keys"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/pgp-signature"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs12"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs7-certreqresp"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs7-crl"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-x509-ca-cert"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-x509-user-cert"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs7-certificates"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs7-mime"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-pkcs7-signature"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803de

    const-string/jumbo v1, "application/rdf+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/rss+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-object"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/xhtml+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/css"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/html"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-c++hdr"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-c++src"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-chdr"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-csrc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-dsrc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-csh"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-haskell"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-java"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-literate-haskell"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-pascal"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-tcl"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-tex"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-latex"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-texinfo"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/atom+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/ecmascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/json"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803df

    const-string/jumbo v1, "application/mac-binhex40"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/rar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/zip"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-apple-diskimage"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-debian-package"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-gtar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-iso9660-image"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-lha"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-lzh"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-lzx"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-stuffit"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-tar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-webarchive"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-webarchive-xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/gzip"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-7z-compressed"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-deb"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-rar-compressed"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e0

    const-string/jumbo v1, "text/x-vcard"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/vcard"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e2

    const-string/jumbo v1, "text/calendar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "text/x-vcalendar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e5

    const-string/jumbo v1, "application/x-font"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/font-woff"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-font-woff"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-font-ttf"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e7

    const-string/jumbo v1, "application/vnd.oasis.opendocument.graphics"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.graphics-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.image"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.stardivision.draw"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.draw"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.draw.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e8

    const-string/jumbo v1, "application/pdf"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803ea

    const-string/jumbo v1, "application/vnd.stardivision.impress"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.impress"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.impress.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-kpresenter"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.presentation"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803eb

    const-string/jumbo v1, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.stardivision.calc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.calc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.calc.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-kspread"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e1

    const-string/jumbo v1, "application/vnd.oasis.opendocument.text"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-master"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.oasis.opendocument.text-web"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.stardivision.writer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.stardivision.writer-global"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.writer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.writer.global"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.sun.xml.writer.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-abiword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-kword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803ed

    const-string/jumbo v1, "application/x-quicktimeplayer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/x-shockwave-flash"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803ee

    const-string/jumbo v1, "application/msword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e3

    const-string/jumbo v1, "application/vnd.ms-excel"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const v0, 0x10803e9

    const-string/jumbo v1, "application/vnd.ms-powerpoint"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "vnd.android.document/directory"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x10803e4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    return-object v3

    :cond_2
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    const-string/jumbo v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x10803dc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_3
    const-string/jumbo v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x10803e7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_4
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x10803ec

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_5
    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x10803ed

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_6
    const v2, 0x10803e6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method
