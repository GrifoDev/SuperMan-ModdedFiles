.class Lcom/android/settings/DreamSettings$DreamInfoPreference$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$DreamInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;->this$1:Lcom/android/settings/DreamSettings$DreamInfoPreference;

    iput-object p2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    return v0
.end method
