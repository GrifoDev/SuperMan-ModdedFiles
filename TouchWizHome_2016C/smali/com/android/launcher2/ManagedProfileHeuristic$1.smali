.class Lcom/android/launcher2/ManagedProfileHeuristic$1;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ManagedProfileHeuristic;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ManagedProfileHeuristic$1;->this$0:Lcom/android/launcher2/ManagedProfileHeuristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    check-cast p2, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ManagedProfileHeuristic$1;->compare(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)I

    move-result v0

    return v0
.end method
