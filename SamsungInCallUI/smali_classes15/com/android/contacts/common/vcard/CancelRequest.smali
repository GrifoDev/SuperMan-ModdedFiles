.class public Lcom/android/contacts/common/vcard/CancelRequest;
.super Ljava/lang/Object;
.source "CancelRequest.java"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final jobId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "jobId"    # I
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    .line 32
    iput-object p2, p0, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    .line 33
    return-void
.end method
