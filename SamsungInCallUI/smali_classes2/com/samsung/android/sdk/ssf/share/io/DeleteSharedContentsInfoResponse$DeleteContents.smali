.class public Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse$DeleteContents;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteContents"
.end annotation


# instance fields
.field public need_to_sms:Z

.field public push_failed_reason:I

.field public pushable:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse;

.field public to_msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse$DeleteContents;->this$0:Lcom/samsung/android/sdk/ssf/share/io/DeleteSharedContentsInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
