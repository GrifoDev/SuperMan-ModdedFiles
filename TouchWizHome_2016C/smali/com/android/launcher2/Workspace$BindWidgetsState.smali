.class final enum Lcom/android/launcher2/Workspace$BindWidgetsState;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BindWidgetsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/Workspace$BindWidgetsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$BindWidgetsState;

.field public static final enum BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field public static final enum BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/Workspace$BindWidgetsState;

    const-string v1, "BIND_NOTHING"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$BindWidgetsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    new-instance v0, Lcom/android/launcher2/Workspace$BindWidgetsState;

    const-string v1, "BIND_NONCURRENT_PAGES"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/Workspace$BindWidgetsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v1, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->$VALUES:[Lcom/android/launcher2/Workspace$BindWidgetsState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$BindWidgetsState;
    .locals 1

    const-class v0, Lcom/android/launcher2/Workspace$BindWidgetsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$BindWidgetsState;
    .locals 1

    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->$VALUES:[Lcom/android/launcher2/Workspace$BindWidgetsState;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$BindWidgetsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-object v0
.end method
