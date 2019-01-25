# Closuers
Swift Closures , code blocks  
/*
 Clousres :- Clousres is the block of functionality that you pass around and used in your code.
 Clousres are the headless functions.
 clousres don't have function name.
 don't have func keyword.
 have in keyword.
 it is called as aynonomous function. they can not call themselves like as function.
 */

// implementation
// 1- create a function with clousres(complitionhandler).
func funcWithClousres(name:String,completionHandler:(_ PassResult:String)->Void)
{
    let nameOfUser = name
    print("this name is \(nameOfUser) called from function name funcWithClousres.")
    completionHandler(nameOfUser)
}

// call function and handle the completion handler.

funcWithClousres(name: "Ashutosh", completionHandler: {(result:String) -> Void in
    print("this is result name \(result) called from function name funcWithClousres calling.")
})


//closures with success and fail code blocks

func clousresWithSuccessFail(isTrue:Bool,success:(_ isTrue:Bool) -> Void , fail :(_ isTrue:Bool) -> Void)
{
    if(isTrue)
    {
        success(isTrue)
    }
    else{
        fail(isTrue)
    }
}

// calling with Success And Fail Blocks

clousresWithSuccessFail(isTrue: false, success: {(result:Bool) -> Void in
    print("value with success block is \(result)")
}, fail: {(result:Bool) -> Void in
    print("value with fail block is \(result)")
})
