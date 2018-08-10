.class Lcom/samsung/android/settings/dualclock/DualClockSetting$2;
.super Ljava/lang/Object;
.source "DualClockSetting.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/dualclock/DualClockSetting;->initWhereToShowPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

.field final synthetic val$displayOptions:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dualclock/DualClockSetting;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    iput-object p2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;->val$displayOptions:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-wrap0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "roaming_clock_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get3(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;->val$displayOptions:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1
.end method
