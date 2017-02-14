.class Lcom/samsung/android/settings/notification/RadioPreference$3;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/RadioPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/RadioPreference;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/RadioPreference;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/RadioPreference$3;->this$0:Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/RadioPreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference$3;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference$3;->this$0:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/RadioPreference$3;->val$rb:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->-wrap0(Lcom/samsung/android/settings/notification/RadioPreference;Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
