.class Lcom/android/incallui/service/SecCallPopupContainer$13;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryName(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$13;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method
