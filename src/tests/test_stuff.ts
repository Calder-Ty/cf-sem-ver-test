import * as mocha from 'mocha'
import * as chai from 'chai'
import { adder } from '..';


describe('Simple test for cloudfront to run', ()=>{
    it("adds two numbers", () =>{
        chai.expect(adder(1,3)).to.equal(4)
    })

    it("Cocantenates two strings", ()=> {
        chai.expect(adder('1','3')).to.equal('13')
    })
})
