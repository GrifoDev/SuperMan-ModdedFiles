.class Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator",
        "<",
        "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$2;->this$0:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;-><init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$1;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$2;->create()Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    return-object v0
.end method
