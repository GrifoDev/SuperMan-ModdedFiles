.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;
.super Ljava/lang/Object;


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public resultCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;->resultCode:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method
