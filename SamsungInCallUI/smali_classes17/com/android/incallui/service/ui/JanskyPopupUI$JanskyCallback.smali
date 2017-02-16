.class Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;
.super Ljava/lang/Object;
.source "JanskyPopupUI.java"

# interfaces
.implements Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/ui/JanskyPopupUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JanskyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/ui/JanskyPopupUI;


# direct methods
.method private constructor <init>(Lcom/android/incallui/service/ui/JanskyPopupUI;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;->this$0:Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/service/ui/JanskyPopupUI;Lcom/android/incallui/service/ui/JanskyPopupUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/service/ui/JanskyPopupUI;
    .param p2, "x1"    # Lcom/android/incallui/service/ui/JanskyPopupUI$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;-><init>(Lcom/android/incallui/service/ui/JanskyPopupUI;)V

    return-void
.end method


# virtual methods
.method public onQueryCompleteMultiLine()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/incallui/service/ui/JanskyPopupUI$JanskyCallback;->this$0:Lcom/android/incallui/service/ui/JanskyPopupUI;

    invoke-virtual {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->updateJanskyIcon()V

    .line 86
    return-void
.end method
