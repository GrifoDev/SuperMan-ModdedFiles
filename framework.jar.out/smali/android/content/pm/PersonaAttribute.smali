.class public final enum Landroid/content/pm/PersonaAttribute;
.super Ljava/lang/Enum;
.source "PersonaAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PersonaAttribute$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/pm/PersonaAttribute;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/pm/PersonaAttribute;

.field public static final enum ALERT_DO_NOT_SHOW_AGAIN:Landroid/content/pm/PersonaAttribute;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

.field public static final enum MY_KNOX:Landroid/content/pm/PersonaAttribute;

.field public static final enum PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

.field public static final enum PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

.field public static final enum QUICK_UNLOCK_NOT_AVAILABLE:Landroid/content/pm/PersonaAttribute;

.field public static final enum RESETTING:Landroid/content/pm/PersonaAttribute;

.field public static final enum SHOW_FOLDER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

.field public static final enum SHOW_LAUNCHER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

.field public static final enum UPGRADING:Landroid/content/pm/PersonaAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "UPGRADING"

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->UPGRADING:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "PASSWORD_CHANGE_REQUEST"

    invoke-direct {v0, v1, v4}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "RESETTING"

    invoke-direct {v0, v1, v5}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->RESETTING:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "DISABLE_KNOX_KEYGUARD"

    invoke-direct {v0, v1, v6}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "PASSWORD_CHANGE_REQUEST_ENFORCED"

    invoke-direct {v0, v1, v7}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "QUICK_UNLOCK_NOT_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->QUICK_UNLOCK_NOT_AVAILABLE:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "MY_KNOX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->MY_KNOX:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "ALERT_DO_NOT_SHOW_AGAIN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->ALERT_DO_NOT_SHOW_AGAIN:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "SHOW_FOLDER_HELP_AFTER_STYLE_CHANGING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->SHOW_FOLDER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute;

    const-string/jumbo v1, "SHOW_LAUNCHER_HELP_AFTER_STYLE_CHANGING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PersonaAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->SHOW_LAUNCHER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/content/pm/PersonaAttribute;

    sget-object v1, Landroid/content/pm/PersonaAttribute;->UPGRADING:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v4

    sget-object v1, Landroid/content/pm/PersonaAttribute;->RESETTING:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/pm/PersonaAttribute;->DISABLE_KNOX_KEYGUARD:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v6

    sget-object v1, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    aput-object v1, v0, v7

    sget-object v1, Landroid/content/pm/PersonaAttribute;->QUICK_UNLOCK_NOT_AVAILABLE:Landroid/content/pm/PersonaAttribute;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaAttribute;->MY_KNOX:Landroid/content/pm/PersonaAttribute;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaAttribute;->ALERT_DO_NOT_SHOW_AGAIN:Landroid/content/pm/PersonaAttribute;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaAttribute;->SHOW_FOLDER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaAttribute;->SHOW_LAUNCHER_HELP_AFTER_STYLE_CHANGING:Landroid/content/pm/PersonaAttribute;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/pm/PersonaAttribute;->$VALUES:[Landroid/content/pm/PersonaAttribute;

    new-instance v0, Landroid/content/pm/PersonaAttribute$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaAttribute$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaAttribute;
    .locals 1

    const-class v0, Landroid/content/pm/PersonaAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaAttribute;

    return-object v0
.end method

.method public static values()[Landroid/content/pm/PersonaAttribute;
    .locals 1

    sget-object v0, Landroid/content/pm/PersonaAttribute;->$VALUES:[Landroid/content/pm/PersonaAttribute;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/PersonaAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
