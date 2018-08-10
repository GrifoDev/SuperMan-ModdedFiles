.class Lcom/samsung/android/settings/DCMHomeSettings$1;
.super Ljava/lang/Object;
.source "DCMHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DCMHomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iput p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->-set0(Lcom/samsung/android/settings/DCMHomeSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget v2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->-wrap0(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DCMHomeSettings;->-wrap1(Lcom/samsung/android/settings/DCMHomeSettings;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
