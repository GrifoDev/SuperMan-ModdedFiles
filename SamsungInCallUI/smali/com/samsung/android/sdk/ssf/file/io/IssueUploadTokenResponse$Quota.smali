.class public Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Quota"
.end annotation


# instance fields
.field private free:J

.field private quota_check:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;

.field private total:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;->this$0:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFree()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;->free:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;->total:J

    return-wide v0
.end method

.method public isQuota_check()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;->quota_check:Z

    return v0
.end method
