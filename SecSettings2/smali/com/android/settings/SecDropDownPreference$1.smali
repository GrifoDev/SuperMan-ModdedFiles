.class Lcom/android/settings/SecDropDownPreference$1;
.super Ljava/lang/Object;
.source "SecDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SecDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p3, :cond_2

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v1, v0}, Lcom/android/settings/SecDropDownPreference;->-wrap0(Lcom/android/settings/SecDropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SecDropDownPreference$1;->this$0:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
