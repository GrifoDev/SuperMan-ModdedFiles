.class public Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;
.super Ljava/lang/Object;
.source "DataWarningViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;
    }
.end annotation


# instance fields
.field private L:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;

.field public checkBox:Landroid/widget/CheckBox;

.field public dataUsageText:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public postion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;

    iget v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->postion:I

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;->onChecked(IZ)V

    return-void
.end method

.method public setCheckBox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->postion:I

    return-void
.end method
