.class Landroid/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference$Listener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SwitchPreference;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 52
    return-void
.end method
