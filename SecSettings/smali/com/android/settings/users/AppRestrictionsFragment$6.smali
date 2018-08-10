.class Lcom/android/settings/users/AppRestrictionsFragment$6;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->showSubordinateAppDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;

.field final synthetic val$relatedPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->val$relatedPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->-get1(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment;->-get1(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->val$relatedPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->-wrap1(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    return-void
.end method
