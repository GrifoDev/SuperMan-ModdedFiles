.class Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;
.super Ljava/lang/Object;
.source "CallerInfoCardView.java"

# interfaces
.implements Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoCardCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;


# direct methods
.method private constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .param p2, "x1"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfoCardItem"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    # invokes: Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    invoke-static {v0, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    .line 92
    return-void
.end method
