.class final synthetic Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/AccessibilityShortcutController;

    iget v1, p0, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;->-$f0:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/policy/AccessibilityShortcutController;->lambda$-com_android_server_policy_AccessibilityShortcutController_9442(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;->-$f0:I

    iput-object p2, p0, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
