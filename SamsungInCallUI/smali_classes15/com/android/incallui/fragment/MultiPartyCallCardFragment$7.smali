.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;
.super Ljava/lang/Object;
.source "MultiPartyCallCardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showMergeNotAllowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$7;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2638
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2639
    return-void
.end method
