.class public Lcn/com/xy/sms/sdk/db/entity/SceneRule;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field public Func_acc_url:I

.field public Func_call:I

.field public Func_config:Ljava/lang/String;

.field public Func_reply_sms:I

.field public Scene_page_config:Ljava/lang/String;

.field public expire_date:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isDownload:I

.field public location:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public res_urls:Ljava/lang/String;

.field public s_version:Ljava/lang/String;

.field public scene_id:Ljava/lang/String;

.field public sceneruleVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->isDownload:I

    return-void
.end method
