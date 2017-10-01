.class Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LockNotiRestrictedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictedArrayItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    const v0, 0x7f040167

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v6, v0}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Z

    move-result v1

    const v6, 0x1020014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedArrayItemAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v9}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    if-ne p1, v2, :cond_4

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    const v6, 0x7f110456

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object v4

    :cond_3
    move v6, v8

    goto :goto_0

    :cond_4
    move v8, v7

    goto :goto_1

    :cond_5
    const/16 v7, 0x8

    goto :goto_2
.end method
