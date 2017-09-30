.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastMessage"
.end annotation


# instance fields
.field message:Ljava/lang/String;

.field timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastMessage;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager$ToastMessage;->timestamp:Ljava/lang/Long;

    return-void
.end method
