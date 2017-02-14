.class public final Lmf/org/apache/xml/serialize/HTMLdtd;
.super Ljava/lang/Object;
.source "HTMLdtd.java"


# static fields
.field private static final ALLOWED_HEAD:I = 0x20

.field private static final CLOSE_DD_DT:I = 0x80

.field private static final CLOSE_P:I = 0x40

.field private static final CLOSE_SELF:I = 0x100

.field private static final CLOSE_TABLE:I = 0x200

.field private static final CLOSE_TH_TD:I = 0x4000

.field private static final ELEM_CONTENT:I = 0x2

.field private static final EMPTY:I = 0x11

.field private static final ENTITIES_RESOURCE:Ljava/lang/String; = "HTMLEntities.res"

.field public static final HTMLPublicId:Ljava/lang/String; = "-//W3C//DTD HTML 4.01//EN"

.field public static final HTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/html4/strict.dtd"

.field private static final ONLY_OPENING:I = 0x1

.field private static final OPT_CLOSING:I = 0x8

.field private static final PRESERVE:I = 0x4

.field public static final XHTMLPublicId:Ljava/lang/String; = "-//W3C//DTD XHTML 1.0 Strict//EN"

.field public static final XHTMLSystemId:Ljava/lang/String; = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

.field private static _boolAttrs:Ljava/util/Hashtable;

.field private static _byChar:Ljava/util/Hashtable;

.field private static _byName:Ljava/util/Hashtable;

.field private static _elemDefs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x20a

    const/4 v4, 0x2

    const/16 v3, 0x11

    const/16 v2, 0x40

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    const-string/jumbo v0, "ADDRESS"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "AREA"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASE"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BASEFONT"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BLOCKQUOTE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BODY"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "BR"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COL"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "COLGROUP"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DD"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DIV"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "DT"

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FIELDSET"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FORM"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "FRAME"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H1"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H2"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H3"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H4"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H5"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "H6"

    invoke-static {v0, v2}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HEAD"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HR"

    const/16 v1, 0x51

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "HTML"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "IMG"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "INPUT"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "ISINDEX"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LI"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "LINK"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "MAP"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "META"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTGROUP"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "OPTION"

    const/16 v1, 0x109

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "P"

    const/16 v1, 0x148

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PARAM"

    invoke-static {v0, v3}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "PRE"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "NOSCRIPT"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "SELECT"

    invoke-static {v0, v4}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "STYLE"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TABLE"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TBODY"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TD"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TEXTAREA"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TFOOT"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TH"

    const/16 v1, 0x4008

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "THEAD"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TITLE"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "TR"

    invoke-static {v0, v5}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    const-string/jumbo v0, "UL"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineElement(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    const-string/jumbo v0, "AREA"

    const-string/jumbo v1, "href"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BUTTON"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DIR"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FRAME"

    const-string/jumbo v1, "noresize"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HR"

    const-string/jumbo v1, "noshade"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IMAGE"

    const-string/jumbo v1, "ismap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "INPUT"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "defaultchecked"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "checked"

    aput-object v3, v1, v2

    const-string/jumbo v2, "readonly"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "LINK"

    const-string/jumbo v1, "link"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MENU"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OBJECT"

    const-string/jumbo v1, "declare"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTGROUP"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTION"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "default-selected"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "selected"

    aput-object v3, v1, v2

    const-string/jumbo v2, "disabled"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "SCRIPT"

    const-string/jumbo v1, "defer"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SELECT"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "multiple"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "disabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "STYLE"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TD"

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TH"

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TEXTAREA"

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "disabled"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "readonly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "UL"

    const-string/jumbo v1, "compact"

    invoke-static {v0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charFromName(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static defineBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static defineBoolean(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static defineElement(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static defineEntity(Ljava/lang/String;C)V
    .locals 2

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static fromChar(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    invoke-static {}, Lmf/org/apache/xml/serialize/HTMLdtd;->initialize()V

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initialize()V
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byName:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_byChar:Ljava/util/Hashtable;

    const-class v0, Lmf/org/apache/xml/serialize/HTMLdtd;

    const-string/jumbo v2, "HTMLEntities.res"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "ASCII"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "ResourceNotFound"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HTMLEntities.res"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "ResourceNotLoaded"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "HTMLEntities.res"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_8

    :goto_1
    throw v0

    :cond_3
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v6, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gtz v3, :cond_6

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v4, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->defineEntity(Ljava/lang/String;C)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_9

    :goto_4
    return-void

    :cond_8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public static isBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_boolAttrs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public static isClosing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "P"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    const/16 v0, 0x40

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v1, "DD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v0, 0x100

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_6
    const-string/jumbo v1, "OPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "THEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/16 v0, 0x200

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v1, "TFOOT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TBODY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "COLGROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/16 v0, 0x4000

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const-string/jumbo v1, "TD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0
.end method

.method private static isElement(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lmf/org/apache/xml/serialize/HTMLdtd;->_elemDefs:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_1

    return v2

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isElementContent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isEmptyTag(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOnlyOpening(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isOptionalClosing(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isPreserveSpace(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lmf/org/apache/xml/serialize/HTMLdtd;->isElement(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "href"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method
