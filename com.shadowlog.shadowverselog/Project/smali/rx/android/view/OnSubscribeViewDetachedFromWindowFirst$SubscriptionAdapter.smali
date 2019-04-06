.class Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
.super Ljava/lang/Object;
.source "OnSubscribeViewDetachedFromWindowFirst.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionAdapter"
.end annotation


# instance fields
.field private subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 48
    iput-object p2, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    .line 49
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 59
    .local v0, "originalSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->unsubscribe()V

    .line 60
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 63
    .end local v0    # "originalSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    iput-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    .line 70
    iput-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 72
    :cond_0
    return-void
.end method
