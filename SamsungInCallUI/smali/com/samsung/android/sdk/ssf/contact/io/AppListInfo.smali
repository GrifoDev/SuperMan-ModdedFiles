.class public Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;
.super Ljava/lang/Object;


# instance fields
.field private app_id:Ljava/lang/String;

.field private svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSvcId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->svc_id:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setSvcId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->svc_id:I

    return-void
.end method
