.class public Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;
.super Ljava/lang/Object;
.source "AssistantMenuUIAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    }
.end annotation


# static fields
.field public static actImageResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static actStringResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static tempCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x7f0200ac

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ShortCut:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actImageResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ShortCut:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressMenuKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b1343

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->actStringResourceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b02dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput v3, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct;->tempCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
