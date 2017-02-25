.class Lcom/android/server/CscParser$Holder;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CscParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final CSC_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field static final sInstance:Lcom/android/server/CscParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/CscParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/CscParser;-><init>(Lcom/android/server/CscParser;)V

    sput-object v0, Lcom/android/server/CscParser$Holder;->sInstance:Lcom/android/server/CscParser;

    sget-object v0, Lcom/android/server/CscParser$Holder;->sInstance:Lcom/android/server/CscParser;

    const-string/jumbo v1, "/system/csc/customer.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/CscParser;->load(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
