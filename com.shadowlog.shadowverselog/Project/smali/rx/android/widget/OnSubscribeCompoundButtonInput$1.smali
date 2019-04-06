.class Lrx/android/widget/OnSubscribeCompoundButtonInput$1;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeCompoundButtonInput;

    .prologue
    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

    invoke-static {v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput;->access$000(Lrx/android/widget/OnSubscribeCompoundButtonInput;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-static {v1, p2}, Lrx/android/view/OnCheckedChangeEvent;->create(Landroid/widget/CompoundButton;Z)Lrx/android/view/OnCheckedChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
