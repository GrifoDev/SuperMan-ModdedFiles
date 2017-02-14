.class final enum Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
.super Ljava/lang/Enum;
.source "QuickOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickOptionsPopup$OptionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum ADD_APPS:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum ADD_TO_SECURE_FOLDER:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum APP_INFO:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum CLEAR_BADGE:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum PUT_TO_SLEEP:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field public static final enum UNINSTALL:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "CLEAR_BADGE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->CLEAR_BADGE:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "ADD_TO_SECURE_FOLDER"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_TO_SECURE_FOLDER:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "PUT_TO_SLEEP"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->PUT_TO_SLEEP:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->UNINSTALL:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "APP_INFO"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->APP_INFO:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const-string v1, "ADD_APPS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_APPS:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->CLEAR_BADGE:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_TO_SECURE_FOLDER:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->PUT_TO_SLEEP:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->UNINSTALL:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->APP_INFO:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_APPS:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->$VALUES:[Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    .locals 1

    const-class v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    .locals 1

    sget-object v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->$VALUES:[Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    invoke-virtual {v0}, [Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    return-object v0
.end method
