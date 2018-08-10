.class public Lcom/samsung/android/settings/accessories/ledcovergrace/Defines;
.super Ljava/lang/Object;
.source "Defines.java"


# static fields
.field public static final LOG_LEVEL1:Ljava/lang/Boolean;

.field public static final LOG_LEVEL2:Ljava/lang/Boolean;

.field public static final LOG_LEVEL3:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessories/ledcovergrace/Defines;->LOG_LEVEL1:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessories/ledcovergrace/Defines;->LOG_LEVEL2:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessories/ledcovergrace/Defines;->LOG_LEVEL3:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
