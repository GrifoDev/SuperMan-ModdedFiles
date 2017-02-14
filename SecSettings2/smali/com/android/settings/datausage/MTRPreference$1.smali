.class Lcom/android/settings/datausage/MTRPreference$1;
.super Ljava/lang/Object;
.source "MTRPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/MTRPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/MTRPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/MTRPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/MTRPreference$1;->this$0:Lcom/android/settings/datausage/MTRPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "MTRPreference"

    const-string/jumbo v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/MTRPreference$1;->this$0:Lcom/android/settings/datausage/MTRPreference;

    iget-object v0, v0, Lcom/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/MTRPreference$1;->this$0:Lcom/android/settings/datausage/MTRPreference;

    iget-object v0, v0, Lcom/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
