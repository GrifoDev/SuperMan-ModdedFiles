.class Lcom/android/incallui/secrcs/RcsShareUI$SessionState;
.super Ljava/lang/Object;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionState"
.end annotation


# instance fields
.field public direction:I

.field public id:J

.field public isActive:Z

.field public size:J

.field public state:I

.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI;
    .param p2, "x1"    # Lcom/android/incallui/secrcs/RcsShareUI$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$SessionState;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-void
.end method
