.class final Lrx/internal/schedulers/ScheduledAction$Remover;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Remover"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36e5888d681586eL


# instance fields
.field final parent:Lrx/subscriptions/CompositeSubscription;

.field final s:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lrx/Subscription;Lrx/subscriptions/CompositeSubscription;)V
    .locals 0
    .param p1, "s"    # Lrx/Subscription;
    .param p2, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->s:Lrx/Subscription;

    .line 142
    iput-object p2, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->parent:Lrx/subscriptions/CompositeSubscription;

    .line 143
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->s:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/schedulers/ScheduledAction$Remover;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->parent:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction$Remover;->s:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 155
    :cond_0
    return-void
.end method
