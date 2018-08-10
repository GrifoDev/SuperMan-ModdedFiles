.class Lcom/samsung/android/settings/spen/SpenDropDownPreference$1;
.super Ljava/lang/Object;
.source "SpenDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SpenDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SpenDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$1;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$1;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$1;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/spen/SpenDropDownPreference$1;->this$0:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClicked() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
