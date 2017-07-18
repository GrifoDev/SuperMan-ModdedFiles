.class Lcom/android/incallui/service/SecModifyCallProcessor$1;
.super Ljava/lang/Object;
.source "SecModifyCallProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecModifyCallProcessor;->requestModifyCall(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecModifyCallProcessor;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecModifyCallProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/service/SecModifyCallProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
