.class public Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

.field public static NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

.field public static NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

.field public static STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
