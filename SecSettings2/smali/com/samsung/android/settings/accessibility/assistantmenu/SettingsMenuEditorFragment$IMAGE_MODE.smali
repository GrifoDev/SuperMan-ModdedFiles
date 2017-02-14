.class public final enum Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
.super Ljava/lang/Enum;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMAGE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

.field public static final enum MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

.field public static final enum PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    const-string/jumbo v1, "PLUS_IMAGE_MODE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    const-string/jumbo v1, "MINUS_IMAGE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->$VALUES:[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->$VALUES:[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    return-object v0
.end method
