.class Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationResult"
.end annotation


# instance fields
.field public authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

.field public gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
