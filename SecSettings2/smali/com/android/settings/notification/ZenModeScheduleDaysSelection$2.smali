.class Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

.field final synthetic val$day:I

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$day:I

    iput p3, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get1(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get3(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-wrap0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0, v3}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-wrap0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get2(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0, v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->val$val:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->-get2(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
