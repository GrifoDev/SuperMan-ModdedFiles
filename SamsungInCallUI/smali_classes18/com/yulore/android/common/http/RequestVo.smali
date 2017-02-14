.class public Lcom/yulore/android/common/http/RequestVo;
.super Ljava/lang/Object;
.source "RequestVo.java"


# instance fields
.field public callback:Lcom/yulore/android/common/http/NetUtils$AsyncHttpResponseHandler;

.field public connectionTimeout:I

.field public context:Landroid/content/Context;

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public requestUrl:Ljava/lang/String;

.field public soTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
