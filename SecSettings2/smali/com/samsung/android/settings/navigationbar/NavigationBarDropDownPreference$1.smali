.class Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;
.super Ljava/lang/Object;
.source "NavigationBarDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "same item : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "mIsSelectable"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-set0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z

    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->-set0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z

    return-void
.end method
