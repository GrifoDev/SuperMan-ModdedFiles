.class final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/pm/Policy;",
        ">;"
    }
.end annotation


# instance fields
.field private duplicateFound:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    const-string/jumbo v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duplicate policy entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    const-string/jumbo v2, "SELinuxMMAC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicate policy entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/pm/Policy;

    check-cast p2, Lcom/android/server/pm/Policy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PolicyComparator;->compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    move-result v0

    return v0
.end method

.method public foundDuplicate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return v0
.end method
